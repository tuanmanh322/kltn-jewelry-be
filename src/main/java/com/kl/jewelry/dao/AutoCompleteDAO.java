package com.kl.jewelry.dao;

import com.kl.jewelry.dto.AutoCompleteContentSet;
import com.kl.jewelry.dto.AutoCompleteTitleSet;
import com.kl.jewelry.dto.AutocompleteSearchDTO;

import java.io.Serializable;
import java.util.List;

public interface AutoCompleteDAO extends Serializable,BaseDAO {
    List<AutoCompleteTitleSet> searchTitleBV(AutocompleteSearchDTO autocompleteSearchDTO);

    List<AutoCompleteTitleSet> searchTitleCD(AutocompleteSearchDTO autocompleteSearchDTO);

    List<AutoCompleteContentSet> searchContentBV(AutocompleteSearchDTO autocompleteSearchDTO);

    List<AutoCompleteContentSet> searchsearchContentCD(AutocompleteSearchDTO autocompleteSearchDTO);
}
