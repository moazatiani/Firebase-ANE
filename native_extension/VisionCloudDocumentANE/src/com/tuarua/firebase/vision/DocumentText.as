/*
 * Copyright 2018 Tua Rua Ltd.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.tuarua.firebase.vision {
import com.tuarua.firebase.CloudDocumentRecognizer;
import com.tuarua.fre.ANEError;

/**
 * Recognized document text in an image.
 */
[RemoteClass(alias="com.tuarua.firebase.vision.DocumentText")]
public class DocumentText {
    /** @private */
    private var _id:String;
    /**
     * String representation of the recognized document text.
     */
    public var text:String;
    private var _blocks:Vector.<DocumentTextBlock> = new <DocumentTextBlock>[];

    /** @private */
    public function DocumentText(id:String) {
        this._id = id;
    }

    /**
     * An array of blocks recognized in the document text.
     */
    public function get blocks():Vector.<DocumentTextBlock> {
        if (_blocks.length > 0) return _blocks;
        var theRet:* = CloudDocumentRecognizer.context.call("getBlocks", this._id);
        if (theRet is ANEError) throw theRet as ANEError;
        if (theRet != null) _blocks = theRet;
        return _blocks;
    }

    /**
     * Disposes the native code associated with this DocumentText.
     */
    public function dispose():void {
        CloudDocumentRecognizer.context.call("disposeResult", this._id);
    }
}
}
