function exactpitch = compareToPitches(Pitch, Pitchtable)
SortedPitchTable = sort(Pitchtable); 
MidPitch = zeros(1,length(SortedPitchTable)-1);
found = 0;

for i = 1:(length(SortedPitchTable)-1)
    MidPitch(i) = (SortedPitchTable(i+1) + SortedPitchTable(i))/2;
end

if (Pitch <= MidPitch(1))
    exactpitch = SortedPitchTable(1);
    found = 1;
end

if (Pitch > MidPitch(length(MidPitch)))
    exactpitch = SortedPitchTable(length(SortedPitchTable));
    found = 1;
end

i = 1;
while(found==0)
    if(Pitch > MidPitch(i) && Pitch <= MidPitch(i+1))
        exactpitch = SortedPitchTable(i+1);
        found=1;
    end
    i = i+1;
end

end