import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const Set<String> _blockedDownloadHosts = {
  'github.com',
  'raw.githubusercontent.com',
  'objects.githubusercontent.com',
  'drive.google.com',
  'dropbox.com',
  'www.dropbox.com',
  'mega.nz',
  'mediafire.com',
  'www.mediafire.com',
  'sourceforge.net',
  'apkpure.com',
  'www.apkpure.com',
  'apkcombo.com',
  'www.apkcombo.com',
  'uptodown.com',
  'www.uptodown.com',
};

const Set<String> _blockedDownloadExtensions = {
  '.apk',
  '.aab',
  '.xapk',
  '.apks',
  '.jar',
  '.dex',
  '.so',
  '.exe',
  '.msi',
  '.dmg',
  '.pkg',
  '.deb',
  '.rpm',
  '.bat',
  '.sh',
};

bool _isAndroidBuild() {
  if (kIsWeb) {
    return false;
  }

  return defaultTargetPlatform == TargetPlatform.android;
}

bool isAllowedExternalUri(Uri uri) {
  if (!_isAndroidBuild()) {
    return true;
  }

  final normalizedHost = uri.host.toLowerCase();
  final normalizedPath = uri.path.toLowerCase();

  final hasBlockedExtension = _blockedDownloadExtensions.any(
    normalizedPath.endsWith,
  );

  if (hasBlockedExtension) {
    return false;
  }

  return !_blockedDownloadHosts.contains(normalizedHost);
}

Future<void> launchSafeExternalUri(
  BuildContext context,
  Uri uri, {
  String? blockedMessage,
}) async {
  if (!isAllowedExternalUri(uri)) {
    if (!context.mounted) {
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          blockedMessage ??
              'This Android build does not open external download destinations.',
        ),
      ),
    );
    return;
  }

  final didLaunch = await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );

  if (!context.mounted || didLaunch) {
    return;
  }

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Could not open the selected link.'),
    ),
  );
}
