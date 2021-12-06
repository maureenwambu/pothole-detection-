%%Load positive images and bounding boxes of potholes
load ('POTHOLES.mat');

%%specify folder with positive image
positiveinstances=POTHOLES(:,1:2);
positiveFolder=fullfile('C:\Users\MAUREEN DIVA\Documents\projectsimulation\potholeimages');
addpath(positiveFolder);

%%specify folder with negative images
negativeFolder=fullfile('C:\Users\MAUREEN DIVA\Documents\projectsimulation\roadimages');
negativeImages=imageDatastore(negativeFolder);
NumStages=3
FAR=0.01

%%Train the detector
trainCascadeObjectDetector('potholedetector_3_75.xml',positiveinstances, negativeFolder,'NumCascadeStages',...
    NumStages, 'FalseAlarmRate',FAR,'TruePositiveRate' ,0.999,'FeatureType','HOG', 'ObjectTrainingSize',[100 300] );