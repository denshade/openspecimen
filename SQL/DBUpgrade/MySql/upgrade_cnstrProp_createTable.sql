create table DYEXTN_ENTIY_COMPOSITE_KEY_REL (ENTITY_ID bigint not null auto_increment, ATTRIBUTE_ID bigint not null, INSERTION_ORDER bigint not null, primary key (ENTITY_ID, INSERTION_ORDER));

create table DYEXTN_CONSTRAINTKEY_PROP (IDENTIFIER bigint not null auto_increment, PRIMARY_ATTRIBUTE_ID bigint, SRC_CONSTRAINT_KEY_ID bigint, TGT_CONSTRAINT_KEY_ID bigint, primary key (IDENTIFIER));