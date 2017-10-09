function amp = Filter(type, cutoff, resonance, slope, f)
%Filter Returns the amplitude value of a specific frequency
%   type          Type of filter (LP, HP)
%   cutoff        Filter cutoff in Hz
%   resonance     Filter resonance as a percentage of the amplitude
%   slope         Absolute value of the filter slope
%   f             Frequency at which the amplitude is being calculated

switch type
    case 'LP'
        a = 1/slope; % Distance between cutoff frequency and point where the amplitude is 0
        slope_1 = (1 + resonance) / a; % Actual slope of the line
        b = resonance / slope_1; % Distance between point where resonance starts and cutoff frequency
        
        if f <= cutoff - b
            amp = 1;
        elseif f <= cutoff
            amp = 1 + slope_1*(f - cutoff + b);
        elseif f <= cutoff + (1 + resonance) / slope_1
            amp = 1 + resonance - slope_1*(f - cutoff);
        else
            amp = 0;
        end
    case 'HP'
        a = 1/slope; % Distance between cutoff frequency and point where the amplitude is 0
        slope_1 = (1 + resonance) / a; % Actual slope of the line
        b = resonance / slope_1; % Distance between point where resonance starts and cutoff frequency
        
        if f >= cutoff + b
            amp = 1;
        elseif f >= cutoff
            amp = 1 + slope_1*(cutoff + b - f);
        elseif f >= cutoff - (1 + resonance) / slope_1
            amp = 1 + resonance - slope_1*(cutoff - f);
        else
            amp = 0;
        end
    otherwise
        amp = 0;
end