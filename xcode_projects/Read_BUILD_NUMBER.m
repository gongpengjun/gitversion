NSString *version = [infoDict objectForKey:@"CFBundleShortVersionString"];
NSString *buildNumber = [infoDict objectForKey:@"CFBundleVersion"];
versionLabel.text = [NSString stringWithFormat:@"Version %@ (%@)", version, buildNumber];
// output: Version 1.0 (192)
