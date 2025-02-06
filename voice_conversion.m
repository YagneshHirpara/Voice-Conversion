% Set up the audio recording parameters
fs = 41000; % Sampling frequency
recObj = audiorecorder(fs, 16, 1); % Create an audio recorder object
% Set the new pitch for the child voice
newPitch = 500; % Adjust this value to achieve the desired child voice pitch
% Record audio input and process it in real-time
disp('Start speaking...')
record(recObj); % Start recording
while recObj.TotalSamples < fs*10 % Record for 10 seconds
pause(0.1); % Pause for a short duration
end
disp('Recording stopped.');
% Get the recorded audio data
audioData = getaudiodata(recObj); % Retrieve the recorded audio data
% Change the pitch to simulate a child voice
audioData = pitchShift(audioData, fs, newPitch); % Call the pitch shifting function
% Create an audio player object and play the modified audio
player = audioplayer(audioData, fs); % Create an audio player object
play(player); % Play the modified audio
% Save the modified audio to a file
audiowrite('child_output.wav', audioData, fs); % Write the modified audio data to a WAV file
% Function to shift the pitch of the audio data
function audioDataShifted = pitchShift(audioData, fs, newPitch)
audioData = audioData(:); % Ensure the audio data is a column vector
t = (0:length(audioData)-1) / fs; % Time vector
audioDataShifted = interp1(t, audioData, t, 'linear'); % Linear interpolation
audioDataShifted = resample(audioDataShifted, fs, round(fs * (newPitch/440))); % Adjust the pitch
end
