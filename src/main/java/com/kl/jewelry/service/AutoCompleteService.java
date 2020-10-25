package com.kl.jewelry.service;

import com.kl.jewelry.dto.AutoCompleteContentSet;
import com.kl.jewelry.dto.AutoCompleteTitleSet;
import com.kl.jewelry.dto.AutocompleteSearchDTO;

import java.util.List;

public interface AutoCompleteService {
    List<AutoCompleteTitleSet> autoCompleteTitleBV(AutocompleteSearchDTO autocompleteSearchDTO);

    List<AutoCompleteTitleSet> autoCompleteTitleCD(AutocompleteSearchDTO autocompleteSearchDTO);

    List<AutoCompleteContentSet> autoCompleteContentBV(AutocompleteSearchDTO autocompleteSearchDTO);


    List<AutoCompleteContentSet> autoCompleteContentCD(AutocompleteSearchDTO autocompleteSearchDTO);

    List<String> fetchTitleBV();
}
