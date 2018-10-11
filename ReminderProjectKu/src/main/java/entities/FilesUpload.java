package entities;

// Generated Sep 14, 2018 10:15:19 AM by Hibernate Tools 3.4.0.CR1

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * FilesUpload generated by hbm2java
 */
@Entity
@Table(name = "FILES_UPLOAD", catalog = "REMINDER")
public class FilesUpload implements java.io.Serializable {

	private int uploadId;
	private String fileName;
	private byte[] fileData;

	public FilesUpload() {
	}

	public FilesUpload(int uploadId) {
		this.uploadId = uploadId;
	}

	public FilesUpload(int uploadId, String fileName, byte[] fileData) {
		this.uploadId = uploadId;
		this.fileName = fileName;
		this.fileData = fileData;
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "upload_id", unique = true, nullable = false)
	public int getUploadId() {
		return this.uploadId;
	}

	public void setUploadId(int uploadId) {
		this.uploadId = uploadId;
	}

	@Column(name = "file_name", length = 128)
	public String getFileName() {
		return this.fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Column(name = "file_data")
	public byte[] getFileData() {
		return this.fileData;
	}

	public void setFileData(byte[] fileData) {
		this.fileData = fileData;
	}

}
