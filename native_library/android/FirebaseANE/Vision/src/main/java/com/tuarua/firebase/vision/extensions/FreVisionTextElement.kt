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

@file:Suppress("FunctionName")

package com.tuarua.firebase.vision.extensions

import com.adobe.fre.FREArray
import com.adobe.fre.FREObject
import com.google.firebase.ml.vision.text.FirebaseVisionText
import com.tuarua.frekotlin.*
import com.tuarua.frekotlin.geom.toFREObject

fun FirebaseVisionText.Element.toFREObject(): FREObject? {
    val ret = FREObject("com.tuarua.firebase.vision.TextElement")
    ret["frame"] = this.boundingBox?.toFREObject()
    ret["text"] = this.text.toFREObject()
    ret["cornerPoints"] = FREArray(this.cornerPoints)
    ret["confidence"] = confidence?.toFREObject()
    ret["recognizedLanguages"] = this.recognizedLanguages.toFREObject()
    return ret
}

fun List<FirebaseVisionText.Element>.toFREObject(): FREArray? {
    val ret = FREArray("com.tuarua.firebase.vision.TextElement", size, true)
            ?: return null
    for (i in this.indices) {
        ret[i] = this[i].toFREObject()
    }
    return ret
}
