BUILD_NUMBER=`git rev-list HEAD --count`
INFO_PLIST="$BUILT_PRODUCTS_DIR/$INFOPLIST_PATH"
if [ -f "$BUILT_PRODUCTS_DIR/$INFOPLIST_PATH" ] ; then
    oldversion=`/usr/libexec/PlistBuddy -c "Print :CFBundleVersion" "$INFO_PLIST"`
fi
if [ "$BUILD_NUMBER" != "$oldversion" ] ; then
    /usr/libexec/PlistBuddy -c "Set :CFBundleVersion $BUILD_NUMBER" "$INFO_PLIST"
fi
