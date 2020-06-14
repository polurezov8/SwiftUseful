# SwiftUseful

### Extensions
- Data+Extension
- UIImageView+Extension
- UITableView+Extension
- UICollectionView+Extension
- String+Localized
- Bundle+Extension
- SCNVector3+Extension

### Protocols
- Alertable
- InterfaceBuilderPrototypable
- Reusable

### Common
- GradientView
- RoundedView
- ShadowView

### Images
- EssentialRoadMap

![](https://github.com/polurezov8/SwiftUseful/blob/master/Images/EssentialRoadMap.png)

- UIKitClasses

![](https://github.com/polurezov8/SwiftUseful/blob/master/Images/UIKitClasses.jpg)

- iOSDeveloperRoadMap

![](https://github.com/polurezov8/SwiftUseful/blob/master/Images/iOSDeveloperRoadMap.png)

- SkillMatrix

![](https://github.com/polurezov8/SwiftUseful/blob/master/Images/SkillMatrix.png)

### Scripts
  - Command line script for showing number of lines in project:
```
find . -type f -exec wc -l {} + | sort -n
```
Scripts Usage:
1. Copy Scripts folder into your project's root directory
2. Build Phases -> Click '+' -> New Run Script Phase
3. You should then see a new section added where you can inject your bash script:
``` 
/bin/sh ${SRCROOT}/Scripts/SCRIPT_NAME.swift 
```
