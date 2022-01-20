%Done by Mohd Wafa. 302539.
%The test cases are basically initializing the matrices and have command
%lines to copy in the command window to run for the initialized matrices.



%THESE MATRICES ARE NOT THE SAME AS PRESENT IN THE RESULT SECTION OF THE
%REPORT!!
%I have initialized 5 matrices, which are in size as follows :
% Matrix A - 3x3
% Matrix B - 5x5
% Matrix C - 7x7
% Matrix D - 10x10
% Matrix E - 12x12

%ALL THE MATRICES ARE SYMMETRIC AND POSITIVE DEFINITE!!!

%Please copy paste these matrix initializing statements and paste in
%command window.
A = [3.8147    0.9096    0.2027;
    0.9096    3.6324    0.3222;
    0.2027    0.3222    3.9575];
%You can run this command to use the function :
r = conditionVar(A,100,0.002); %Please note that you can change the last two paramters of the function which denote to iterations and tolerance respectively.

B = [5.9649    0.4789    0.9650    0.8180    0.3283;
    0.4789    5.1419    0.5388    0.8367    0.7491;
    0.9650    0.5388    5.0357    0.7961    0.4829;
    0.8180    0.8367    0.7961    5.3922    0.4662;
    0.3283    0.7491    0.4829    0.4662    5.0462];


%You can run this command to use the function :
r = conditionVar(B,100,0.002); %Please note that you can change the last two paramters of the function which denote to iterations and tolerance respectively.

C = [7.0971    0.6025    0.7021    0.4077    0.7281    0.1460    0.3177;
    0.6025    7.7655    0.7749    0.5733    0.5944    0.6432    0.4487;
    0.7021    0.7749    7.2760    0.5100    0.7730    0.2084    0.3675;
    0.4077    0.5733    0.5100    7.5853    0.5916    0.7828    0.3642;
    0.7281    0.5944    0.7730    0.5916    7.5472    0.1911    0.2505;
    0.1460    0.6432    0.2084    0.7828    0.1911    7.9293    0.5904;
    0.3177    0.4487    0.3675    0.3642    0.2505    0.5904    7.5853];

%You can run this command to use the function :
r = conditionVar(C,100,0.002); %Please note that you can change the last two paramters of the function which denote to iterations and tolerance respectively.

D = [10.5497    0.8482    0.4072    0.8353    0.7643    0.3221    0.5405    0.5103    0.2289    0.2731;
    0.8482   10.9340    0.1478    0.3606    0.6433    0.0787    0.3695    0.3265    0.4454    0.1771;
    0.4072    0.1478   10.6020    0.5444    0.7614    0.4126    0.4121    0.4699    0.1079    0.1990;
    0.8353    0.3606    0.5444   10.5383    0.5403    0.4737    0.3413    0.2222    0.9520    0.3269;
    0.7643    0.6433    0.7614    0.5403   10.3998    0.4198    0.4617    0.6657    0.9334    0.4568;
    0.3221    0.0787    0.4126    0.4737    0.4198   10.5499    0.1644    0.6111    0.5986    0.4993;
    0.5405    0.3695    0.4121    0.3413    0.4617    0.1644   10.2400    0.2642    0.0547    0.6768;
    0.5103    0.3265    0.4699    0.2222    0.6657    0.6111    0.2642   10.7803    0.3123    0.3944;
    0.2289    0.4454    0.1079    0.9520    0.9334    0.5986    0.0547    0.3123   10.3532    0.5588;
    0.2731    0.1771    0.1990    0.3269    0.4568    0.4993    0.6768    0.3944    0.5588   10.7447;
];

%You can run this command to use the function :
r = conditionVar(D,100,0.002); %Please note that you can change the last two paramters of the function which denote to iterations and tolerance respectively.


E = [12.1890    0.4966    0.3668    0.4021    0.4439    0.4047    0.3526    0.8046    0.4868    0.3634    0.2537    0.4503;
    0.4966   12.5085    0.5666    0.5644    0.6988    0.7866    0.5289    0.4741    0.2817    0.6186    0.7303    0.6542;
    0.3668    0.5666   12.5870    0.5656    0.5062    0.6006    0.3130    0.7828    0.4694    0.1273    0.1337    0.5265;
    0.4021    0.5644    0.5656   12.4302    0.2033    0.6967    0.6736    0.2728    0.3056    0.3740    0.6134    0.3392;
    0.4439    0.6988    0.5062    0.2033   12.1174    0.4376    0.6534    0.5390    0.4939    0.1267    0.5400    0.4671;
    0.4047    0.7866    0.6006    0.6967    0.4376   12.2373    0.2483    0.7286    0.7258    0.7499    0.4770    0.3311;
    0.3526    0.5289    0.3130    0.6736    0.6534    0.2483   12.8852    0.8462    0.7030    0.4057    0.2059    0.3631;
    0.8046    0.4741    0.7828    0.2728    0.5390    0.7286    0.8462   12.7150    0.7607    0.6957    0.4969    0.7651;
    0.4868    0.2817    0.4694    0.3056    0.4939    0.7258    0.7030    0.7607   12.8594    0.6383    0.5477    0.4931;
    0.3634    0.6186    0.1273    0.3740    0.1267    0.7499    0.4057    0.6957    0.6383   12.0596    0.8275    0.0515;
    0.2537    0.7303    0.1337    0.6134    0.5400    0.4770    0.2059    0.4969    0.5477    0.8275   12.6490    0.5998;
    0.4503    0.6542    0.5265    0.3392    0.4671    0.3311    0.3631    0.7651    0.4931    0.0515    0.5998   12.5269];


%You can run this command to use the function :
r = conditionVar(E,100,0.002); %Please note that you can change the last two paramters of the function which denote to iterations and tolerance respectively.