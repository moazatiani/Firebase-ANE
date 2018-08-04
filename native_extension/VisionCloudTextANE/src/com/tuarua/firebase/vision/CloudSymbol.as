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

package com.tuarua.firebase.vision {
import flash.geom.Rectangle;

[RemoteClass(alias="com.tuarua.firebase.vision.CloudSymbol")]
public class CloudSymbol {
    public var confidence:Number;
    public var frame:Rectangle;
    public var textProperty:CloudTextProperty;
    public var text:String;

    public function CloudSymbol() {
    }
}
}