

function j = Compression1(file, svdrankarray)
    A = imread(file);
    subplot(2,3,1)
    imshow(A)
    title('Original')
    for i = 1 : size(svdrankarray)
        t = num2str(svdrankarray(i));
        j = Compression(file, svdrankarray(i));
        subplot(2,3,i+1)
        imshow(j)
        tit = ['Rank = ', t];
        title(tit)
    end
end