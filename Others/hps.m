function S = hps(Y)

down2 = Y(1:2:length(Y));
padding = zeros((length(Y)-length(down2)), 1);
down2 = [down2 padding];

%%down3 = Y(1:3:length(Y));
%%padding = zeros((length(Y)-length(down3)), 1);
%%down3 = [down3; padding];

S = Y.*down2;

%%S = Y.*down2.*down3;


for i=1:length(S)
   S(i) = S(i)^(1/2);
end

end