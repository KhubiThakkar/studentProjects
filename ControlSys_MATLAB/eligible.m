%Write a function called eligible that helps the admission officer of the
%Graduate School of Vanderbuilt University decide whether the applicant is
%eligible for admission based on GRE scores. The function takes topositive
%scalars calledd v and q as input and returns the logical admit as output.
%They represent the percentiles of the verbal and quantitative portions of
%the GRE respectively. You do not need to check the inputs. The applicant
%is eligible if the average percentile is at least 92% and both of the
%individual percentiles are over 88%. The function returns logical true or
%false.
function admit = eligible(v,q)
if v>88 && q>88
    avg = (v + q)/2;
    admit = (avg>=92);
else
    admit = (v>88 && q>88);

    end