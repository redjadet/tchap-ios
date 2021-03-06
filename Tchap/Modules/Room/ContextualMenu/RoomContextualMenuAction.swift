/*
 Copyright 2019 New Vector Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

@objc enum RoomContextualMenuAction: Int {
    case copy
    case reply
#if ENABLE_EDITION
    case edit
#else
    case redact
#endif
    case more
    
    // MARK: - Properties
    
    var title: String {
        let title: String
        
        switch self {
        case .copy:
            title = VectorL10n.roomEventActionCopy
        case .reply:
            title = VectorL10n.roomEventActionReply
#if ENABLE_EDITION
        case .edit:
            title = VectorL10n.roomEventActionEdit
#else
        case .redact:
            title = VectorL10n.roomEventActionRedact
#endif
        case .more:
            title = VectorL10n.roomEventActionMore
        }
        
        return title
    }
    
    var image: UIImage? {
        let image: UIImage?
        
        switch self {
        case .copy:
            image = Asset.Images.roomContextMenuCopy.image
        case .reply:
            image = Asset.Images.roomContextMenuReply.image
#if ENABLE_EDITION
        case .edit:
            image = Asset.Images.roomContextMenuEdit.image
#else
        case .redact:
            image = Asset.Images.roomContextMenuRedact.image
#endif
        case .more:
            image = Asset.Images.roomContextMenuMore.image
        default:
            image = nil
        }
        
        return image
    }
}
