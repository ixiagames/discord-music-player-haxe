package dmp;

import discordjs.client.Client;
import haxe.Constraints.Function;

@:jsRequire("discord-music-player", "Player")
extern class Player {

    public var client:Dynamic;
    
    public function new(client:Client, ?options:PlayerOptions);
    public function createQueue(guildId:String):Queue;
    public function deleteQueue(guildId:String):Void;
    public function getQueue(guildId:String):Queue;
    public function on(event:Event, listener:Function):Player;
    
}

typedef PlayerOptions = {

    ?leaveOnEnd:Bool,
    ?leaveOnStop:Bool,
    ?leaveOnEmpty:Bool,
    ?deafenOnJoin:Bool,
    ?timeout:Int,
    ?volume:Int,
    ?quality:String,
    ?localAddress:String,
    ?ytdlRequestOptions:String

}