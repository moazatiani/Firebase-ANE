package com.tuarua.firebase.auth {
import com.tuarua.firebase.AuthANEContext;
import com.tuarua.fre.ANEError;

[RemoteClass(alias="com.tuarua.firebase.auth.FirebaseUser")]
public class FirebaseUser {
    private var _email:String;
    private var _displayName:String;
    private var _isAnonymous:Boolean;
    private var _isEmailVerified:Boolean;
    private var _photoUrl:String;
    private var _phoneNumber:String;
    private var _uid:String;

    public function FirebaseUser(uid:String, displayName:String, email:String, isAnonymous:Boolean,
                                 isEmailVerified:Boolean, photoUrl:String, phoneNumber:String) {
        this._uid = uid;
        this._displayName = displayName;
        this._email = email;
        this._isAnonymous = isAnonymous;
        this._isEmailVerified = isEmailVerified;
        this._photoUrl = photoUrl;
        this._phoneNumber = phoneNumber;
    }

    public function sendEmailVerification(listener:Function = null):void {
        AuthANEContext.validate();
        var theRet:* = AuthANEContext.context.call("sendEmailVerification", AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    public function unlink(provider:String, listener:Function = null):void {
        AuthANEContext.validate();
        var theRet:* = AuthANEContext.context.call("unlink", provider,
                AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    public function link(credential:AuthCredential, listener:Function = null):void {
        AuthANEContext.validate();
        var theRet:* = AuthANEContext.context.call("link", credential,
                AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    //TODO
    public function reauthenticate(credential:AuthCredential):void {

    }

    public function reload(listener:Function = null):void {
        AuthANEContext.validate();
        var theRet:* = AuthANEContext.context.call("reload", AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    public function getIdToken(forceRefresh:Boolean, listener:Function):void {
        AuthANEContext.validate();
        var theRet:* = AuthANEContext.context.call("getIdToken", forceRefresh, AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    public function updateEmail(value:String, listener:Function = null):void {
        AuthANEContext.validate();
        _email = value;
        var theRet:* = AuthANEContext.context.call("updateEmail", value, AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    public function updatePassword(value:String, listener:Function = null):void {
        AuthANEContext.validate();
        var theRet:* = AuthANEContext.context.call("updatePassword", value, AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    public function updateProfile(displayName:String = null, photoUrl:String = null, listener:Function = null):void {
        AuthANEContext.validate();
        var theRet:* = AuthANEContext.context.call("updateProfile", displayName, photoUrl,
                AuthANEContext.createEventId(listener));
        if (theRet is ANEError) throw theRet as ANEError;
    }

    public function get email():String {
        return _email;
    }

    public function get uid():String {
        return _uid;
    }

    public function get displayName():String {
        return _displayName;
    }

    public function get isAnonymous():Boolean {
        return _isAnonymous;
    }

    public function get isEmailVerified():Boolean {
        return _isEmailVerified;
    }

    public function get photoUrl():String {
        return _photoUrl;
    }

    public function get phoneNumber():String {
        return _phoneNumber;
    }


}
}