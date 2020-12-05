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

function emp = IntraEmpireCompetition(emp)

    nEmp = numel(emp);
    
    for k = 1:nEmp
        for i = 1:emp(k).nCol
            if emp(k).Col(i).Cost<emp(k).Imp.Cost
                imp = emp(k).Imp;
                col = emp(k).Col(i);
                
                emp(k).Imp = col;
                emp(k).Col(i) = imp;
            end
        end
    end

end