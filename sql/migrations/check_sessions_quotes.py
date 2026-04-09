from pathlib import Path
p=Path('sql/old_db_data/sessions.csv')
with p.open('r',encoding='utf-8',errors='replace') as f:
    bad=[]
    for i,line in enumerate(f,1):
        if line.count('"')%2!=0:
            bad.append((i,line.rstrip('\n')))
    if not bad:
        print('No lines with odd quote counts')
    else:
        for i,l in bad:
            print(i, l)
