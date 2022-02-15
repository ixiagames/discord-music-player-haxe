package dmp;

import discordjs.channel.VoiceChannel;
import discordjs.guild.Guild;
import discordjs.user.User;
import haxe.extern.EitherType;
import js.lib.Promise;

extern class Queue {

    public var guild:Guild;
    public var songs:Array<Song>;
    public var nowPlaying:Song;
    public var destroyed:Bool;
    public var repeatMode:RepeatMode;
    public var connection:Dynamic;
    public var data:Dynamic;
    
    public function join(channel:VoiceChannel):Promise<Queue>;
    public function play(search:EitherType<Song, String>, ?options:PlayOptions):Promise<Song>;
    public function playlist(search:EitherType<Playlist, String>, ?options:PlaylistOptions):Promise<Playlist>;
    public function skip():Song;
    public function stop():Void;
    public function setPaused(state:Bool):Bool;
    public function setRepeatMode(mode:RepeatMode):Bool;
    public function setData(data:Dynamic):Void;
    public function createProgressBar(?options:ProgressBarOptions):ProgressBar;

}

typedef PlayOptions = {

    ?uploadDate:String,
    ?duration:String,
    ?sortBy:String,
    ?timecode:Bool,
    ?index:Int,
    ?requestedBy:User,
    ?localAddress:String

}

typedef PlaylistOptions = {

    ?maxSongs:Int,  
    ?requestedBy:User,
    ?shuffle:Bool,
    ?localAddress:String

}