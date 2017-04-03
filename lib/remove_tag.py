import re

def remove_tag(raw_string):
  cleanr = re.compile('<.*?>')
  cleantext = re.sub(cleanr, '', raw_string)
  return cleantext