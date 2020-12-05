%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA118
% Project Title: Implementation of Imperialist Competitive Algorithm (ICA)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, Imperialist Competitive Algorithm (ICA) in MATLAB (URL: https://yarpiz.com/247/ypea118-imperialist-competitive-algorithm), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function emp = AssimilateColonies(emp)

    global ProblemSettings;
    CostFunction = ProblemSettings.CostFunction;
    VarSize = ProblemSettings.VarSize;
    VarMin = ProblemSettings.VarMin;
    VarMax = ProblemSettings.VarMax;
    
    global ICASettings;
    beta = ICASettings.beta;
    
    nEmp = numel(emp);
    for k = 1:nEmp
        for i = 1:emp(k).nCol
            
            emp(k).Col(i).Position = emp(k).Col(i).Position ...
                + beta*rand(VarSize).*(emp(k).Imp.Position-emp(k).Col(i).Position);
            
            emp(k).Col(i).Position = max(emp(k).Col(i).Position, VarMin);
            emp(k).Col(i).Position = min(emp(k).Col(i).Position, VarMax);
            
            emp(k).Col(i).Cost = CostFunction(emp(k).Col(i).Position);
            
        end
    end

end