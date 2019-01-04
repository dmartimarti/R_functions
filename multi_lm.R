# multiple hypothesis testing



# helping functions for multiple hypothesis testing

apply_lm = function(df){
      lm(data = df, Values ~ ID)      
}

apply_multilm = function(model){
	glht(model, linfct = mcp(ID = M))
}



# master function
multi_lm = function(data, feature, contrasts){
	M = contrasts
	nested = data %>%
		group_by_(feature) %>%
		nest() %>%
		mutate(models = map(.f = apply_lm, .x = data)) %>%
		mutate(multcomp = map(.f = apply_multilm, .x = models)) %>%	
		mutate(results = map(.f = summary, .x = multcomp)) %>%	
		mutate(results = map(.f = tidy, .x = results)) %>%
		dplyr::select(Met, results) %>%
		unnest %>%
		rename(Contrast = lhs) %>%
		mutate(FDR = p.adjust(p.value, method = 'fdr'),
			   FDR_stars = gtools::stars.pval(FDR))

	return(nested)
}
