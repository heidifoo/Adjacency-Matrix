
function b = get_binary_matrix(x,upr_perc)
    w = get_weight_matrix(x);
    % Get a flat vector/array to work with
    % note that weight_matrix has only >= 0 entries
    flat_values = w(:);
    % Only take nonzero values
    fv_nonzero = flat_values(flat_values ~= 0);
    % Calculate our thresholding value
    thr_value = quantile(fv_nonzero,1-upr_perc);
    % Generate a matrix of entries > the thresholding value
    b = w > thr_value;
end
