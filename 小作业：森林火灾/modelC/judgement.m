if(j==2)
if (mod(ps(j),s)~=1 && p(ps(j)-1)==50 )%shang
    f=3;
else if (ceil(ps(j)/s)~=s && p(ps(j)+s)==50 )%you
    f=2;
else if (mod(ps(j),s)~=0 && p(ps(j)+1)==50)%xia 
    f=4;
else if (ceil(ps(j)/s)~=1 && p(ps(j)-s)==50 )%zuo
    f=1;
    else
        fast;
    end
    end
    end
end
end

if(j==1)
    if (ceil(ps(j)/s)~=s && p(ps(j)+s)==50 )%you
        f=2;    
    else if (mod(ps(j),s)~=0 && p(ps(j)+1)==50)%xia 
        f=4;    
        else if (ceil(ps(j)/s)~=1 && p(ps(j)-s)==50 )%zuo
        f=1;
    else if (mod(ps(j),s)~=1 &&p(ps(j)-1)==50 )%shang
        f=3;

        else
            fast;
        end
        end
        end
    end
end

if(j==3)
    if (mod(ps(j),s)~=0 && p(ps(j)+1)==50)%xia 
        f=4;
    else if (ceil(ps(j)/s)~=1 && p(ps(j)-s)==50 )%zuo
        f=1;      
    else if (mod(ps(j),s)~=1 &&p(ps(j)-1)==50 )%shang
        f=3; 
    else if (ceil(ps(j)/s)~=s && p(ps(j)+s)==50 )%you
        f=2;

        else
            fast;
        end
        end
        end
    end
end

if(j==4)
    if (ceil(ps(j)/s)~=1 && p(ps(j)-s)==50 )%zuo
        f=1;        
    else if (mod(ps(j),s)~=1 &&p(ps(j)-1)==50 )%shang
        f=3;  
    else if (ceil(ps(j)/s)~=s && p(ps(j)+s)==50 )%you
        f=2;
    else if (mod(ps(j),s)~=0 && p(ps(j)+1)==50)%xia 
        f=4;
        else
            fast;
        end
        end
        end
    end
end

    