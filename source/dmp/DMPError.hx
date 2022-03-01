package dmp;

extern class DMPError {

    @:native("name") public var code(default, never):DMPErrors;
    public var name(default, never):String;
    public var message(default, never):String;

    public function toJSON():{ code:DMPErrors, message:String }
    public function toString():String;

}

enum abstract DMPErrors(String) to String {
    
    var UNKNOWN = "Unknown";
    var QUEUE_DESTROYED = "QueueDestroyed";
    var NOTHING_PLAYING = "NothingPlaying";
    var UNKNOWN_VOICE = "UnknownVoice";
    var CHANNEL_TYPE_INVALID = "ChannelTypeInvalid";
    var VOICE_CONNECTION_ERROR = "VoiceConnectionError";
    var NO_VOICE_CONNECTION = "NoVoiceConnection";
    var UNKNOWN_REPEAT_MODE = "UnknownRepeatMode";
    var RESOURCE_NOT_READY = "ResourceNotReady";
    var INVALID_GUILD = "InvalidGuild";
    var SEARCH_NULL = "SearchIsNull";
    var INVALID_PLAYLIST = "InvalidPlaylist";
    var INVALID_SPOTIFY = "InvalidSpotify";
    var INVALID_APPLE = "InvalidApple";
    var UNKNOWN_SONG = "UnknownSong";

}