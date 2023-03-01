function out = tensor2RGB(r)
            L = size(r,1);
            out = zeros(L,L,3,"uint8");
                    
            categorie = [0,0,0;
                         255,0,127;
                         255,102,178;
                         153,255,255;
                         153,204,255;
                         102,204,0;
                         153,255,51;
                         255,255,255
                        ];
           
             for i=1:L
                 for k=1:L
                     
                     if( r(i,k,1)==1 )
                         out(i,k,:) = categorie(8,:);
                     end
                     if( r(i,k,2)==1 )
                         out(i,k,:) = categorie(1,:);
                     end
                     if( r(i,k,3)==1 )
                         out(i,k,:) = categorie(2,:);
                     end
                     if( r(i,k,4)==1 )
                         out(i,k,:) = categorie(3,:);
                     end
                     if( r(i,k,5)==1 )
                         out(i,k,:) = categorie(4,:);
                     end
                     if( r(i,k,6)==1 )
                         out(i,k,:) = categorie(5,:);
                     end
                     if( r(i,k,7)==1 )
                         out(i,k,:) = categorie(6,:);
                     end
                     if( r(i,k,8)==1 )
                         out(i,k,:) = categorie(7,:);
                     end
                 end
             end  
end