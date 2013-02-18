/**
 * 
 */
package cn.leadcloud.core;

import java.io.Serializable;
import java.util.List;

/**
 * @author sunphy
 * 2013-1-1 下午4:27:34
 */
public interface MapperInterface<E> {

	E get(Serializable id);
	
	List<E> list();
	
	void insert(E e);
	
	void update(E e);
	
	void delete(E e);
	
	void delete(Serializable id);
}
