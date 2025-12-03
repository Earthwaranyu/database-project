CREATE INDEX IF NOT EXISTS idx_class_trainer ON Class(trainer_id);

CREATE INDEX IF NOT EXISTS idx_purchase_member ON purchase_history(member_id);

CREATE INDEX IF NOT EXISTS idx_checkin_member ON public.checkin_log(member_id);