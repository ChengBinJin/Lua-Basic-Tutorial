array = {"Lua", "C#", "Java"}

for k,v in pairs(array) do
	print(k, v)
end

array[2] = nil

for k, v in ipairs(array) do
	print(k, v)
end

--pairs����table, �����������е�key��value
--ipairs����������1��ʼ����������������nilֵ��ֹͣ

--[[
	for �����б� in ����������״̬������ ���Ʊ��� do
		--ѭ����
	end
--]]

--1. ���õ�������������״̬�����Ϳ��Ʊ��������������ݸ����������� ״̬����ֻ���ڵ�һ��ʹ�õ�ʱ��ֵ
--2. ������������ķ���ֵΪnil���˳�forѭ��
	-- �������nil�Ļ����ѷ���ֵ��ֵ�������б���ִ��ѭ����

function square(state, control)
	if (control >= state) then
		return nil
	else
		control = control + 1
		return control, control * control
	end
end

for i, j in square, 9, 0 do
	print(i, j)
end


