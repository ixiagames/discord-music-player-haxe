package dmp;

extern class Playlist {
    
    public var author:String;
    public var name:String;
    public var player:Player;
    public var queue:Queue;
    public var songs:Array<Song>;
    public var url:String;

    public function toString():String;

}