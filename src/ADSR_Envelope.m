function env = ADSR_Envelope(a, d, s, r, dur, fs)
%ADSR_Envelope Creates an ADSR envelope for amplitude modulation
%   a    Attack time in world time
%   d    Decay time in world time
%   s    Sustain amplitude
%   r    Release time in world time
%   dur  Total duration of the note
%   fs   Sampling frequency

% Convert durations into divisors of fs
if mod(a*fs, 1) ~= 0
    a = floor(a*fs) / fs;
end
if mod(d*fs, 1) ~= 0
    d = floor(d*fs) / fs;
end
if mod(r*fs, 1) ~= 0
    r = floor(r*fs) / fs;
end

sustain_time = dur - (a + d + r);
if sustain_time < 0
    sustain_time = 0;
end

% Attack
attack = linspace(0, 1, a * fs);
if dur < a
    env = attack(1:dur*fs);
    return
end
env = attack;
% Decay
decay = linspace(1, s, d * fs);
if dur < a + d
    decay = decay(1:(dur-d)*fs);
    env = [env decay];
    return
end
env = [env decay];
% Sustain
sustain = ones(1, round(sustain_time * fs)) * s;
env = [env sustain];
% Release
release = linspace(s, 0, r * fs);
if dur < a + d + r
    release = release(1:round((dur-a-d)*fs));
    env = [env release];
    return
end
env = [env release];

if size(env, 2) > dur*fs
    env = env(1:dur*fs);
elseif size(env, 2) < dur*fs
    env(size(env, 2)+1 : dur*fs) = 0;
end