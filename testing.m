%%
clear all

listOfSongs = dir('songs');  %%loading songs into list%%
numberOfSongs = numel(listOfSongs)-2;   %%total number of songs%%
songName = [];
for k = 1:numberOfSongs
    information = listOfSongs(k+2);
    songName{k} = information.name;   %%getting songnames%%
end
songName = songName';
%disp(songName);
prompt = msgbox('Creating a HashTable');   
hash_table = createHash(200,songName);    %%creating hashtable%%

close(prompt);

%%
prompt = msgbox('Loading Song');

[filename, pathname] = uigetfile('*.mp3');   %%allows user to select the song which will be the input

[clip, fs] = audioread(strcat(pathname, filename));  %%reads the audio

start = randi([0 floor(length(clip)/fs)-10],1,1);  %%generates a random 10second audio which will serve as the input
stop = start+10;
z = clip(fs*start+1:1:fs*stop);
sound(z,fs);                        % plays the audio file which will be the input,sends audio signal z to the speaker at sample rate fs.
pause(10)
clear sound;
y = z';
close(prompt);

%%
prompt = msgbox('Finding the best Match');
matchID = findMatch(y,fs,hash_table,numberOfSongs)
close(prompt);