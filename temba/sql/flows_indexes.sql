-- Generated by make_sql on 2017-01-26 15:13

CREATE INDEX flows_flowrun_expires_on ON flows_flowrun(expires_on) WHERE is_active = TRUE;

CREATE INDEX flows_flowrun_null_expired_on ON flows_flowrun (exited_on) WHERE exited_on IS NULL;

CREATE INDEX flows_flowrun_org_modified_id ON flows_flowrun (org_id, modified_on DESC, id DESC);

CREATE INDEX flows_flowrun_org_modified_id_where_responded ON flows_flowrun (org_id, modified_on DESC, id DESC) WHERE responded = TRUE;

CREATE INDEX flows_flowrun_flow_modified_id ON flows_flowrun (flow_id, modified_on DESC, id DESC);

CREATE INDEX flows_flowrun_flow_modified_id_where_responded ON flows_flowrun (flow_id, modified_on DESC, id DESC) WHERE responded = TRUE;

CREATE INDEX flows_flowrun_parent_created_on_not_null ON flows_flowrun (parent_id, created_on desc) WHERE parent_id IS NOT NULL;

CREATE INDEX flows_flowrun_timeout_active ON flows_flowrun (timeout_on) WHERE is_active = TRUE AND timeout_on IS NOT NULL;

CREATE INDEX flows_flowpathrecentstep_from_to_left ON flows_flowpathrecentstep (from_uuid, to_uuid, left_on DESC);

CREATE INDEX flows_flowpathcount_unsquashed ON flows_flowpathcount(flow_id, from_uuid, to_uuid, period) WHERE NOT is_squashed;

CREATE INDEX flows_flowruncount_unsquashed ON flows_flowruncount(flow_id, exit_type) WHERE NOT is_squashed;

