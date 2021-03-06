/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

import UIKit

class SettingsNavigationController: UINavigationController {
    var profile: Profile!
    var tabManager: TabManager!

    override func viewDidLoad() {
        super.viewDidLoad()

        let rootViewController = SettingsTableViewController()
        rootViewController.profile = profile
        rootViewController.tabManager = tabManager
        self.pushViewController(rootViewController, animated: false)
    }

    func SELdone() {
        NSLog("Done!")
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
