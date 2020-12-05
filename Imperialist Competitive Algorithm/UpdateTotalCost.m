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

function emp = UpdateTotalCost(emp)

    global ICASettings;
    zeta = ICASettings.zeta;
    
    nEmp = numel(emp);
    
    for k = 1:nEmp
        if emp(k).nCol>0
            emp(k).TotalCost = emp(k).Imp.Cost+zeta*mean([emp(k).Col.Cost]);
        else
            emp(k).TotalCost = emp(k).Imp.Cost;
        end
    end

end