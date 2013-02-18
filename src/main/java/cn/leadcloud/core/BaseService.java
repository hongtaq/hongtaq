/**
 * 
 */
package cn.leadcloud.core;

import java.io.Serializable;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

/**
 * @author sunphy
 * 2013-1-1 下午5:03:26
 */
public abstract class BaseService<E,M extends MapperInterface<E>> {

	public abstract M getMapper();

	public E get(Serializable id) {
		return getMapper().get(id);
	}

	public List<E> list() {
		return getMapper().list();
	}

	@Transactional
	public void insert(E e) {
		getMapper().insert(e);
	}

	@Transactional
	public void update(E e) {
		getMapper().update(e);		
	}

	@Transactional
	public void delete(E e) {
		getMapper().delete(e);		
	}

	@Transactional
	public void delete(Serializable id) {
		getMapper().delete(id);
	}

}
