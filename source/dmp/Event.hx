package dmp;

enum abstract Event(String) from String to String {

    /**
     * Channel was empty.
     */
    var CHANNEL_EMPTY = "channelEmpty"; // queue

    /**
     * A song was added to the queue.
     */
    var SONG_ADD = "songAdd"; // queue, song

    /**
     * A playlist was added to the queue.
     */
    var PLAYLIST_ADD = "playlistAdd"; // queue, playlist

    /**
     * There was no more music to play.
     */
    var QUEUE_DESTROYED = "queueDestroyed"; // queue

    /**
     * The queue was destroyed (either by ending or stopping).
     */
    var QUEUE_END = "queueEnd"; //queue

    /**
     * Changed to a new song.
     */
    var SONG_CHANGED = "songChanged"; // queue, newSong, oldSong

    /**
     * A first song in the queue started playing.
     */
    var SONG_FIRST = "songFirst"; // queue, song

    /**
     * Someone disconnected the bot from the channel.
     */
    var CLIENT_DISCONNECT = "clientDisconnect"; // queue

    /**
     * The bot was undeafened when deafenOnJoin is true.
     */
    var CLIENT_UNDEAFEN = "clientUndeafen"; // queue

    /**
     * There was an error in runtime.
     */
    var ERROR = "error"; // error, queue
    
}