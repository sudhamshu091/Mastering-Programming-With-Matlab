In a voting center, the voters are required to give their names and ID numbers to the voting staff before going into voting room.Write a function called voters to record the
incoming voter's information. The function should take an unspecified number of inputs, but the first inputwill be the current database. The rest of the arguments must come in the 
order of name, a string or char array, and ID, an integer or integer valued double. If there is atleast one occurance of no ID number after a name, or the data types are not what's 
required, return the original database. The function should return a struct array containing Name (a string) and ID (a double) fields as shown below.

>>>database = voters([], 'Brandon', 12356)
database = 

  struct with fields:

    Name: "Brandon"
      ID: 12356
>>>database = voters(database, "MIke", 9876, 'Akos', 112233)
database = 

  1×3 struct array with fields:

    Name
    ID
>>>database
ans = 

  struct with fields:

    Name: "Akos"
      ID: 112233
However,if there is an illegal call, the database should not change:
>>>database
database = 

  1×3 struct array with fields:

    Name
    ID
>>>database = voters(database, 'Student' , 99999, "No ID")
database = 

  1×3 struct array with fields:

    Name
    ID
    
    
%%%%%%%%%%%%%%%%%%
function d = voters(varargin)
d = 0;
if rem(length(varargin),2) == 0
	d = varargin{1};
else
	for i = 2:2:length(varargin) - 1
		if ~(ischar(varargin{i}) || isstring(varargin{i}))
			d = varargin{1};break;
		end
		if(ischar(varargin{i+1}) ||isstring(varargin{i+1}))
			d = varargin{1};break;
		end
		if ~(fix(varargin{i+1}) == varargin{i+1})
			d = varargin{1};break;
		end
	end
end
if ~isequal(d, varargin{1})
	database = varargin{1};
	h = length(database) + 1;
	g = length(database) + 1;
	for j = 2:length(varargin)
		if rem(j,2) == 0
			database(h).Name = string(varargin{j});
			h = h + 1;
		else
			database(g).ID = double(varargin{j});
			g = g + 1;
		end
	end
	d = database;
end
end



