# gitversion
Automatically generate gitversion (like svnversion) as Xcode project's build number

## Core Commands

### Generate gitversion from HEAD commit


```
gitversion git:(master) $ git rev-list --count HEAD
4
```

### Parse gitversion to commit

```
gitversion git:(master) $ git log --reverse --oneline|head -n 4|tail -n 1
fc88c71 code snippet of the way to integrate gitversion as BuildNumber in Xcode
```

## References

- [iOS: Changing info.plist during build phase](https://stackoverflow.com/questions/6912743/ios-changing-info-plist-during-build-phase/26354117#26354117)
- [svnversion](http://svnbook.red-bean.com/en/1.7/svn.ref.svnversion.re.html)
- [git rev-list](https://git-scm.com/docs/git-rev-list)
- [git log](https://git-scm.com/docs/git-log)

