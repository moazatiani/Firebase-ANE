/*
 *  Copyright 2018 Tua Rua Ltd.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
import FreSwift
import Foundation
import FirebaseAuth

public extension User {
    func toFREObject() -> FREObject? {
        do {
            return try FREObject.init(className: "com.tuarua.firebase.auth.FirebaseUser",
                                      args: self.uid,
                                      self.displayName,
                                      self.email,
                                      self.isAnonymous,
                                      self.isEmailVerified,
                                      self.photoURL?.absoluteString,
                                      self.phoneNumber)
        } catch {
        }
        return nil
    }
}
