package com.onlineexam.model;

public class Organisation {
	     private int OrganisationId;
         public int getOrganisationId() {
			return OrganisationId;
		}

		public void setOrganisationId(int organisationId) {
			OrganisationId = organisationId;
		}

		private String OrganisationName;

		public String getOrganisationName() {
			return OrganisationName;
		}
		public Organisation(int int1, String string) {
			this.OrganisationId=int1;
			this.OrganisationName=string;
		}

		public void setOrganisationName(String organisationName) {
			OrganisationName = organisationName;
		}

		public Organisation() {
			super();
		}

		public Organisation(String organisationName) {
			super();
			OrganisationName = organisationName;
		}
         
}
