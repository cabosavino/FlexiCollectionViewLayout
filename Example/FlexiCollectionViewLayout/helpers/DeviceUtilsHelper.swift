//
//  DeviceUtilsHelper.swift
//  FlexiCollectionViewLayout
//
//  Created by Deepak Kumar on 11/13/16.
//  Copyright © 2016 Deepak Kumar. All rights reserved.
//

import UIKit

final class DeviceUtilsHelper {
    
    internal func isDeviceiPhoneInPortrait(_ traitCollection: UITraitCollection) -> Bool {
        let iPhonePortraitTraitCollection = UITraitCollection(traitsFrom: [UITraitCollection(horizontalSizeClass: .compact),UITraitCollection(verticalSizeClass: .regular)])
        return traitCollection.containsTraits(in: iPhonePortraitTraitCollection)
    }
    
    internal func isDeviceiPhoneInLandscape(_ traitCollection: UITraitCollection) -> Bool {
        let iPhoneLandscapeTraitCollection = UITraitCollection(traitsFrom: [UITraitCollection(verticalSizeClass: .compact)])
        return traitCollection.containsTraits(in: iPhoneLandscapeTraitCollection)
    }
    
    internal func isDeviceiPad(_ traitCollection: UITraitCollection) -> Bool {
        let iPadTraitCollection = UITraitCollection(traitsFrom: [UITraitCollection(horizontalSizeClass: .regular), UITraitCollection(verticalSizeClass: .regular)])
        return traitCollection.containsTraits(in: iPadTraitCollection)
    }

}
