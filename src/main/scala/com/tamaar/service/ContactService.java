package com.tamaar.service;

import com.tamaar.model.Order;
import com.tamaar.repository.OrderRepository;
import com.tamaar.shoppingcart.parser.OrderVo;
import com.tamaar.util.BeanUtil;
import com.tamaar.vo.ContactListVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
@Transactional
public class ContactService {

    @Autowired
    private OrderRepository contactRepository;

    @Transactional(readOnly = true)
    public ContactListVO findAll(int page, int maxResults) {
        Page<OrderVo> result = executeQueryFindAll(page, maxResults);

        if(shouldExecuteSameQueryInLastPage(page, result)){
            int lastPage = result.getTotalPages() - 1;
            result = executeQueryFindAll(lastPage, maxResults);
        }

        return buildResult(result);
    }

    public void save(OrderVo contact) {
        contactRepository.save(new Order());
    }

    @Secured("ROLE_ADMIN")
    public void delete(int contactId) {
        contactRepository.delete(contactId);
    }

    @Transactional(readOnly = true)
    public ContactListVO findByNameLike(int page, int maxResults, String name) {
        Page<OrderVo> result = executeQueryFindByName(page, maxResults, name);

        if(shouldExecuteSameQueryInLastPage(page, result)){
            int lastPage = result.getTotalPages() - 1;
            result = executeQueryFindByName(lastPage, maxResults, name);
        }

        return buildResult(result);
    }

    private boolean shouldExecuteSameQueryInLastPage(int page, Page<OrderVo> result) {
        return isUserAfterOrOnLastPage(page, result) && hasDataInDataBase(result);
    }

    private Page<OrderVo> executeQueryFindAll(int page, int maxResults) {
        final PageRequest pageRequest = new PageRequest(page, maxResults, sortByNameASC());

        Page<Order> pageOrderVo = contactRepository.findAll(pageRequest);

        List<Order> content = pageOrderVo.getContent();

        List<OrderVo> orderVoList = BeanUtil.getOrderVoList(content);

        Page p = new PageImpl(orderVoList);

        return p;


    }

    private Sort sortByNameASC() {
        return new Sort(Sort.Direction.ASC, "orderId");
    }

    private ContactListVO buildResult(Page<OrderVo> result) {
        return new ContactListVO(result.getTotalPages(), result.getTotalElements(), result.getContent());
    }

    private Page<OrderVo> executeQueryFindByName(int page, int maxResults, String name) {
        final PageRequest pageRequest = new PageRequest(page, maxResults, sortByNameASC());

        //return contactRepository.findByNameLike(pageRequest, "%" + name + "%");

        return null;
    }

    private boolean isUserAfterOrOnLastPage(int page, Page<OrderVo> result) {
        return page >= result.getTotalPages() - 1;
    }

    private boolean hasDataInDataBase(Page<OrderVo> result) {
        return result.getTotalElements() > 0;
    }
}