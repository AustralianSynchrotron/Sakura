# From sorin's answer at http://stackoverflow.com/questions/458550/standard-way-to-embed-version-into-python-package
# Store the version here so:
# 1) we don't load dependencies by storing it in __init__.py
# 2) we can import it in setup.py for the same reason
# 3) we can import it into your module module
##__version__ = '0.3.1'
##__version__ = '1.0'
##__version__ = '1.0.1'
##__version__ = '1.0.2'

##__version__='1.0.3'
#
# - implemented newDCM PVs, so Sakura can read data from either, old or new DCM
# - removed occurences of 'NaN' from the 100-element detector deadtime correction files ([...].ini)
#       and replaced them with 0.0  (this is to make the deadtime correction more robust where detector
#       pixels previously 'dead' come back to 'life'
__version__='1.0.4'
#
# - Update to support wxpython from wx 2.8 to wxPython 4.0 phoenix
