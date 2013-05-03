package com.ganesha.basicweb.model.accesspath;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.ganesha.basicweb.model.TableEntity;
import com.ganesha.basicweb.model.module.Module;

@Entity
@Table(name = "ms_access_path")
public class AccessPath implements TableEntity {

	private static final long serialVersionUID = -2855686542697649307L;

	@Id
	private String url;

	@ManyToOne
	@JoinColumn(name = "module_id")
	private Module module;

	public Module getModule() {
		return module;
	}

	public String getUrl() {
		return url;
	}

	public void setModule(Module module) {
		this.module = module;
	}

	public void setUrl(String url) {
		this.url = url;
	}
}
