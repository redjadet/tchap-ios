Tchap-ios
==========

Tchap/iOS is an iOS Matrix client.

.. image:: https://linkmaker.itunes.apple.com/images/badges/en-us/badge_appstore-lrg.svg
   :target: https://apps.apple.com/fr/app/tchap/id1446253779?mt=8

It is based on MatrixKit (https://github.com/matrix-org/matrix-ios-kit) and MatrixSDK (https://github.com/matrix-org/matrix-ios-sdk).

You can build the app from source as per below:

Build instructions
==================

Before opening the Tchap Xcode workspace, you need to build it with the
CocoaPods command::

        $ cd Tchap
        $ bundle install
        $ bundle exec pod install

This will load all dependencies for the Tchap source code, including MatrixKit
and MatrixSDK.  You will need an recent and updated (``pod setup``) install of
CocoaPods.

Then, open ``Tchap.xcworkspace`` with Xcode

        $ open Tchap.xcworkspace

Developing
==========

Uncomment the right definitions of ``$matrixKitVersion`` for the version you want to develop and build against. For example, if you are trying to build the develop branch, uncomment ``$matrixKitVersion = 'develop'`` and make sure the more specific MatrixKit version is commented out. Once you are done editing the ``Podfile``, run ``pod install``.

Copyright & License
==================

Copyright (c) 2014-2017 OpenMarket Ltd
Copyright (c) 2017 Vector Creations Ltd
Copyright (c) 2017-2019 New Vector Ltd

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
