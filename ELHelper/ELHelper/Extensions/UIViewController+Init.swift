//
//  UIViewController+Init.swift
//  EDSwiftCore
//
//  Created by Eddie on 1/29/19.
//  Copyright © 2019 Eddie. All rights reserved.
//

import UIKit

extension UIViewController {

    /// Init From Storyboard
    ///
    /// - Parameters:
    ///   - name: Storyboard name (default = classname)
    ///   - storyboardId: storyboard id (if no -> use initialize vc)
    ///   - bundle: the bundle to load the storyboard
    public static func initFromStoryboard(name: String? = nil, storyboardId: String? = nil, bundle: Bundle? = nil) -> Self {

        let name = name ?? className
        let storyboard = UIStoryboard(name: name, bundle: bundle)

        if let storyboardId = storyboardId {
            return unsafeDowncast(storyboard.instantiateViewController(withIdentifier: storyboardId), to: self)
        }

        return unsafeDowncast(storyboard.instantiateInitialViewController()!, to: self)
    }
}
