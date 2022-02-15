package dmp;

import discordjs.user.User;

extern class Song {

    public var author:String;
    public var data:Dynamic;
    public var duration:String;
    public var isFirst(default, never):Bool;
    public var isLive:Bool;
    public var milliseconds:Float;
    public var name:String;
    public var player(default, never):Player;
    public var queue:Queue;
    public var requestedBy:User;
    public var seekTime(default, never):Float;
    public var thumbnail:String;
    public var url:String;
    
    public function new(raw:RawSong, queue:Queue, requestedBy:User);
    public function setData(data:Dynamic):Void;
    public function toString():String;

}