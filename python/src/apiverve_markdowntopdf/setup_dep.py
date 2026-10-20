from setuptools import setup, find_packages

setup(
    name='apiverve_markdowntopdf',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Markdown to PDF is a PDF generator API that converts markdown text into professionally formatted PDF documents and returns a temporary download URL for each file.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/markdowntopdf?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
