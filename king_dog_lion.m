% Code for a Book Club and Literary Discussion Group in MATLAB 

% Step 1: Set up variables 
numMembers = 0; % Number of members 
memberNames = {}; % Array of member names 
bookList = {}; % Array of books to discuss 

% Step 2: Welcome
fprintf('Welcome to the Book Club and Literary Discussion Group!\n');

% Step 3: Gather number of members
while numMembers < 1
    numMembers = input('How many members would like to join? ');
end

% Step 4: Gather member names
for count = 1:numMembers
    memberNames{count} = input(sprintf('Member %d name: ', count), 's');
end

% Step 5: Gather book list
while true
    bookName = input('Please enter the title of a book to discuss (enter to finish): ', 's');
    if isempty(bookName)
        break;
    end
    
    bookList{end+1} = bookName;
end

% Step 6: Provide output
fprintf('\nBook Club and Literary Discussion Group Information:\n');
fprintf('----------------------------------------------------\n');
fprintf('Number of Members: %d\n', numMembers);

fprintf('Member Names: ');
for count = 1:numMembers
    if count == 1
        fprintf('%s', memberNames{count});
    else
        fprintf(', %s', memberNames{count});
    end
end
fprintf('\n');

fprintf('Book List: ');
for count = 1:length(bookList)
    if count == 1
        fprintf('%s', bookList{count});
    else
        fprintf(', %s', bookList{count});
    end
end
fprintf('\n');