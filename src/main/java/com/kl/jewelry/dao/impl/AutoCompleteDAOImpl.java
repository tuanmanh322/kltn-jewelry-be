package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.AutoCompleteDAO;
import com.kl.jewelry.dto.AutoCompleteContentSet;
import com.kl.jewelry.dto.AutoCompleteTitleSet;
import com.kl.jewelry.dto.AutocompleteSearchDTO;
import org.hibernate.query.Query;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.util.CollectionUtils;

import java.util.List;

@Repository
public class AutoCompleteDAOImpl extends AbstractDAO implements AutoCompleteDAO {
    private final Logger log = LoggerFactory.getLogger(AutoCompleteDAOImpl.class);

    @Override
    public List<AutoCompleteTitleSet> searchTitleBV(AutocompleteSearchDTO autocompleteSearchDTO) {
        log.info(" start dao to searchTitleBV with :{}",autocompleteSearchDTO);
        StringBuilder sqlBuilder = new StringBuilder();
        List<String> excludeNames = autocompleteSearchDTO.getExcludeKeywords();
        sqlBuilder.append("select new ");
        sqlBuilder.append(AutoCompleteTitleSet.class.getName());
        sqlBuilder.append("(bv.id, bv.title)");
        sqlBuilder.append(" from Baiviet bv where bv.title like :p_title");
        if(!CollectionUtils.isEmpty(excludeNames)){
            sqlBuilder.append(" and bv.title not in (:p_title_excludes)");
        }
        sqlBuilder.append(" order by bv.title");
        Query query = getSession().createQuery(sqlBuilder.toString());
        query.setParameter("p_title", "%" + autocompleteSearchDTO.getKeyword() + "%");
        if(!CollectionUtils.isEmpty(excludeNames)){
            query.setParameter("p_title_excludes", excludeNames);
        }
        query.setMaxResults(5);
        return query.getResultList();
    }

    @Override
    public List<AutoCompleteTitleSet> searchTitleCD(AutocompleteSearchDTO autocompleteSearchDTO) {
        log.info(" start dao to searchTitleCD with :{}",autocompleteSearchDTO);
        StringBuilder sb = new StringBuilder();
        List<String> excludeNames = autocompleteSearchDTO.getExcludeKeywords();
        sb.append("select new ");
        sb.append(AutoCompleteTitleSet.class.getName());
        sb.append("(bv.id, bv.title)");
        sb.append(" from Baiviet bv ");
        sb.append(" left join Chude as cd on cd.id = bv.ma_chude ");
        sb.append(" where 1 = 1");
        sb.append(" and bv.ma_chude=:p_idCD ");
        sb.append(" and bv.title like :p_title ");

        if(!CollectionUtils.isEmpty(excludeNames)){
            sb.append(" and bv.title not in (:p_title_excludes)");
        }
        sb.append(" order by bv.title");
        Query query = getSession().createQuery(sb.toString());
        query.setParameter("p_idCD",autocompleteSearchDTO.getIdCD());
        query.setParameter("p_title", "%" + autocompleteSearchDTO.getKeyword() + "%");
        if(!CollectionUtils.isEmpty(excludeNames)){
            query.setParameter("p_title_excludes", excludeNames);
        }
        query.setMaxResults(5);
        return query.getResultList();
    }

    @Override
    public List<AutoCompleteContentSet> searchContentBV(AutocompleteSearchDTO autocompleteSearchDTO) {
        log.info(" start dao to searchContentBV with :{}",autocompleteSearchDTO);
        StringBuilder sqlBuilder = new StringBuilder();
        List<String> excludeNames = autocompleteSearchDTO.getExcludeKeywords();
        sqlBuilder.append("select new ");
        sqlBuilder.append(AutoCompleteContentSet.class.getName());
        sqlBuilder.append("(bv.id, bv.noidung)");
        sqlBuilder.append(" from Baiviet bv where bv.noidung like :p_noidung");
        if(!CollectionUtils.isEmpty(excludeNames)){
            sqlBuilder.append(" and bv.noidung not in (:p_noidung_excludes)");
        }
        sqlBuilder.append(" order by bv.noidung");
        Query query = getSession().createQuery(sqlBuilder.toString());
        query.setParameter("p_noidung", "%" + autocompleteSearchDTO.getKeyword() + "%");
        if(!CollectionUtils.isEmpty(excludeNames)){
            query.setParameter("p_noidung_excludes", excludeNames);
        }
        query.setMaxResults(5);
        return query.getResultList();
    }

    @Override
    public List<AutoCompleteContentSet> searchsearchContentCD(AutocompleteSearchDTO autocompleteSearchDTO) {
        log.info(" start dao to searchTitleCD with :{}",autocompleteSearchDTO);
        StringBuilder sb = new StringBuilder();
        List<String> excludeNames = autocompleteSearchDTO.getExcludeKeywords();
        sb.append("select new ");
        sb.append(AutoCompleteContentSet.class.getName());
        sb.append("(bv.id, bv.noidung)");
        sb.append(" from Baiviet bv ");
        sb.append(" left join Chude as cd on cd.id = bv.ma_chude ");
        sb.append(" where 1 = 1");
        sb.append(" and bv.ma_chude=:p_idCD ");
        sb.append(" and bv.noidung like :p_noidung ");

        if(!CollectionUtils.isEmpty(excludeNames)){
            sb.append(" and bv.noidung not in (:p_noidung_excludes)");
        }
        sb.append(" order by bv.noidung");
        Query query = getSession().createQuery(sb.toString());
        query.setParameter("p_idCD",autocompleteSearchDTO.getIdCD());
        query.setParameter("p_noidung", "%" + autocompleteSearchDTO.getKeyword() + "%");
        if(!CollectionUtils.isEmpty(excludeNames)){
            query.setParameter("p_noidung_excludes", excludeNames);
        }
        query.setMaxResults(5);
        return query.getResultList();
    }
}
