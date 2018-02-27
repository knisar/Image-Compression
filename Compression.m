


function img = Compression(file, rankapproximation)
    A = imread(file);
    if size(A,3) == 1   % for 2-D image
        g = double(A);  % converting to double
        [u,s,v] = svds(g,rankapproximation);   % SVD of image
        grey = uint8(u * s * v');
        img = grey;
    else
        R = double(A(:,:,1));   % converting image array to double
        G = double(A(:,:,2));
        B = double(A(:,:,3));
        [u,s,v] = svds(B,rankapproximation);   % SVD of image
        blue = uint8(u * s * v');
        [u,s,v] = svds(G,rankapproximation);
        green = uint8(u * s * v');
        [u,s,v] = svds(R,rankapproximation);
        red = uint8(u * s * v');
        Img(:,:,1) = red;
        Img(:,:,2) = green;
        Img(:,:,3) = blue;
        img = Img;   % mxnx3 array
end