function w = get_weight_matrix(x)
    % Remove our diagonal entries
    I = eye(length(x));
    non_diag = abs(I-1);
    cm_no_loops = x .* non_diag;

    % Get a matrix of elements which are positive
    pos_conns = cm_no_loops > 0;
    % Do an element wise multiplication to obtain a weighted matrix with only positive values
    w = cm_no_loops .* pos_conns;
end
