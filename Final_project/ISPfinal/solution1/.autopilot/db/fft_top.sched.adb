<?xml version="1.0" encoding="UTF-8" standalone="yes" ?>
<!DOCTYPE boost_serialization>
<boost_serialization signature="serialization::archive" version="15">
<syndb class_id="0" tracking_level="0" version="0">
	<userIPLatency>-1</userIPLatency>
	<userIPName></userIPName>
	<cdfg class_id="1" tracking_level="1" version="0" object_id="_0">
		<name>fft_top</name>
		<ret_bitwidth>0</ret_bitwidth>
		<ports class_id="2" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="3" tracking_level="1" version="0" object_id="_1">
				<Value class_id="4" tracking_level="0" version="0">
					<Obj class_id="5" tracking_level="0" version="0">
						<type>1</type>
						<id>1</id>
						<name>direction</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo class_id="6" tracking_level="0" version="0">
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>direction</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs class_id="7" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_2">
				<Value>
					<Obj>
						<type>1</type>
						<id>2</id>
						<name>in_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>in</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>0</direction>
				<if_type>1</if_type>
				<array_size>16384</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_3">
				<Value>
					<Obj>
						<type>1</type>
						<id>3</id>
						<name>out_r</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>out</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>1</if_type>
				<array_size>16384</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
			<item class_id_reference="3" object_id="_4">
				<Value>
					<Obj>
						<type>1</type>
						<id>4</id>
						<name>ovflo</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>ovflo</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<direction>1</direction>
				<if_type>0</if_type>
				<array_size>0</array_size>
				<bit_vecs>
					<count>0</count>
					<item_version>0</item_version>
				</bit_vecs>
			</item>
		</ports>
		<nodes class_id="8" tracking_level="0" version="0">
			<count>9</count>
			<item_version>0</item_version>
			<item class_id="9" tracking_level="1" version="0" object_id="_5">
				<Value>
					<Obj>
						<type>0</type>
						<id>6</id>
						<name>direction_read</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName>direction</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>1</bitwidth>
				</Value>
				<oprand_edges>
					<count>2</count>
					<item_version>0</item_version>
					<item>31</item>
					<item>32</item>
				</oprand_edges>
				<opcode>read</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>1</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_6">
				<Value>
					<Obj>
						<type>0</type>
						<id>7</id>
						<name>fft_status_data_V</name>
						<fileName>fft_top.cpp</fileName>
						<fileDirectory>C:\Users\leo870823\Desktop\MSOC\Final_project</fileDirectory>
						<lineNumber>181</lineNumber>
						<contextFuncName>fft_top</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item class_id="11" tracking_level="0" version="0">
								<first>C:\Users\leo870823\Desktop\MSOC\Final_project</first>
								<second class_id="12" tracking_level="0" version="0">
									<count>1</count>
									<item_version>0</item_version>
									<item class_id="13" tracking_level="0" version="0">
										<first class_id="14" tracking_level="0" version="0">
											<first>fft_top.cpp</first>
											<second>fft_top</second>
										</first>
										<second>181</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>fft_status.data.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>8</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>34</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>2</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_7">
				<Value>
					<Obj>
						<type>0</type>
						<id>8</id>
						<name>fft_config_data_V</name>
						<fileName>fft_top.cpp</fileName>
						<fileDirectory>C:\Users\leo870823\Desktop\MSOC\Final_project</fileDirectory>
						<lineNumber>180</lineNumber>
						<contextFuncName>fft_top</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\leo870823\Desktop\MSOC\Final_project</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_top.cpp</first>
											<second>fft_top</second>
										</first>
										<second>180</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName>fft_config.data.V</originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>16</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>35</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>3</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_8">
				<Value>
					<Obj>
						<type>0</type>
						<id>10</id>
						<name>xk_channel</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>36</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>4</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_9">
				<Value>
					<Obj>
						<type>0</type>
						<id>13</id>
						<name>xn_channel</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>32</bitwidth>
				</Value>
				<oprand_edges>
					<count>1</count>
					<item_version>0</item_version>
					<item>37</item>
				</oprand_edges>
				<opcode>alloca</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>5</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_10">
				<Value>
					<Obj>
						<type>0</type>
						<id>17</id>
						<name>_ln183</name>
						<fileName>fft_top.cpp</fileName>
						<fileDirectory>C:\Users\leo870823\Desktop\MSOC\Final_project</fileDirectory>
						<lineNumber>183</lineNumber>
						<contextFuncName>fft_top</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\leo870823\Desktop\MSOC\Final_project</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_top.cpp</first>
											<second>fft_top</second>
										</first>
										<second>183</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>5</count>
					<item_version>0</item_version>
					<item>39</item>
					<item>40</item>
					<item>41</item>
					<item>42</item>
					<item>43</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>3.63</m_delay>
				<m_topoIndex>6</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_11">
				<Value>
					<Obj>
						<type>0</type>
						<id>24</id>
						<name>_ln185</name>
						<fileName>fft_top.cpp</fileName>
						<fileDirectory>C:\Users\leo870823\Desktop\MSOC\Final_project</fileDirectory>
						<lineNumber>185</lineNumber>
						<contextFuncName>fft_top</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\leo870823\Desktop\MSOC\Final_project</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_top.cpp</first>
											<second>fft_top</second>
										</first>
										<second>185</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>45</item>
					<item>46</item>
					<item>47</item>
					<item>48</item>
					<item>49</item>
					<item>306</item>
					<item>307</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>8.75</m_delay>
				<m_topoIndex>7</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_12">
				<Value>
					<Obj>
						<type>0</type>
						<id>27</id>
						<name>_ln186</name>
						<fileName>fft_top.cpp</fileName>
						<fileDirectory>C:\Users\leo870823\Desktop\MSOC\Final_project</fileDirectory>
						<lineNumber>186</lineNumber>
						<contextFuncName>fft_top</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\leo870823\Desktop\MSOC\Final_project</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_top.cpp</first>
											<second>fft_top</second>
										</first>
										<second>186</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>7</count>
					<item_version>0</item_version>
					<item>51</item>
					<item>52</item>
					<item>53</item>
					<item>54</item>
					<item>55</item>
					<item>305</item>
					<item>308</item>
				</oprand_edges>
				<opcode>call</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>8</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
			<item class_id_reference="9" object_id="_13">
				<Value>
					<Obj>
						<type>0</type>
						<id>28</id>
						<name>_ln187</name>
						<fileName>fft_top.cpp</fileName>
						<fileDirectory>C:\Users\leo870823\Desktop\MSOC\Final_project</fileDirectory>
						<lineNumber>187</lineNumber>
						<contextFuncName>fft_top</contextFuncName>
						<inlineStackInfo>
							<count>1</count>
							<item_version>0</item_version>
							<item>
								<first>C:\Users\leo870823\Desktop\MSOC\Final_project</first>
								<second>
									<count>1</count>
									<item_version>0</item_version>
									<item>
										<first>
											<first>fft_top.cpp</first>
											<second>fft_top</second>
										</first>
										<second>187</second>
									</item>
								</second>
							</item>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<oprand_edges>
					<count>0</count>
					<item_version>0</item_version>
				</oprand_edges>
				<opcode>ret</opcode>
				<m_Display>0</m_Display>
				<m_isOnCriticalPath>0</m_isOnCriticalPath>
				<m_isLCDNode>0</m_isLCDNode>
				<m_isStartOfPath>0</m_isStartOfPath>
				<m_delay>0.00</m_delay>
				<m_topoIndex>9</m_topoIndex>
				<m_clusterGroupNumber>-1</m_clusterGroupNumber>
			</item>
		</nodes>
		<consts class_id="15" tracking_level="0" version="0">
			<count>4</count>
			<item_version>0</item_version>
			<item class_id="16" tracking_level="1" version="0" object_id="_14">
				<Value>
					<Obj>
						<type>2</type>
						<id>33</id>
						<name>empty</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>64</bitwidth>
				</Value>
				<const_type>0</const_type>
				<content>1</content>
			</item>
			<item class_id_reference="16" object_id="_15">
				<Value>
					<Obj>
						<type>2</type>
						<id>38</id>
						<name>dummy_proc_fe_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:dummy_proc_fe.1&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_16">
				<Value>
					<Obj>
						<type>2</type>
						<id>44</id>
						<name>fft_config1_s</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:fft&lt;config1&gt;&gt;</content>
			</item>
			<item class_id_reference="16" object_id="_17">
				<Value>
					<Obj>
						<type>2</type>
						<id>50</id>
						<name>dummy_proc_be_1</name>
						<fileName></fileName>
						<fileDirectory></fileDirectory>
						<lineNumber>0</lineNumber>
						<contextFuncName></contextFuncName>
						<inlineStackInfo>
							<count>0</count>
							<item_version>0</item_version>
						</inlineStackInfo>
						<originalName></originalName>
						<rtlName></rtlName>
						<coreName></coreName>
					</Obj>
					<bitwidth>0</bitwidth>
				</Value>
				<const_type>6</const_type>
				<content>&lt;constant:dummy_proc_be.1&gt;</content>
			</item>
		</consts>
		<blocks class_id="17" tracking_level="0" version="0">
			<count>1</count>
			<item_version>0</item_version>
			<item class_id="18" tracking_level="1" version="0" object_id="_18">
				<Obj>
					<type>3</type>
					<id>29</id>
					<name>fft_top</name>
					<fileName></fileName>
					<fileDirectory></fileDirectory>
					<lineNumber>0</lineNumber>
					<contextFuncName></contextFuncName>
					<inlineStackInfo>
						<count>0</count>
						<item_version>0</item_version>
					</inlineStackInfo>
					<originalName></originalName>
					<rtlName></rtlName>
					<coreName></coreName>
				</Obj>
				<node_objs>
					<count>9</count>
					<item_version>0</item_version>
					<item>6</item>
					<item>7</item>
					<item>8</item>
					<item>10</item>
					<item>13</item>
					<item>17</item>
					<item>24</item>
					<item>27</item>
					<item>28</item>
				</node_objs>
			</item>
		</blocks>
		<edges class_id="19" tracking_level="0" version="0">
			<count>24</count>
			<item_version>0</item_version>
			<item class_id="20" tracking_level="1" version="0" object_id="_19">
				<id>32</id>
				<edge_type>1</edge_type>
				<source_obj>1</source_obj>
				<sink_obj>6</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_20">
				<id>34</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>7</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_21">
				<id>35</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>8</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_22">
				<id>36</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>10</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_23">
				<id>37</id>
				<edge_type>1</edge_type>
				<source_obj>33</source_obj>
				<sink_obj>13</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_24">
				<id>39</id>
				<edge_type>1</edge_type>
				<source_obj>38</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_25">
				<id>40</id>
				<edge_type>1</edge_type>
				<source_obj>6</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_26">
				<id>41</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_27">
				<id>42</id>
				<edge_type>1</edge_type>
				<source_obj>2</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_28">
				<id>43</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>17</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_29">
				<id>45</id>
				<edge_type>1</edge_type>
				<source_obj>44</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_30">
				<id>46</id>
				<edge_type>1</edge_type>
				<source_obj>13</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_31">
				<id>47</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_32">
				<id>48</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_33">
				<id>49</id>
				<edge_type>1</edge_type>
				<source_obj>8</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_34">
				<id>51</id>
				<edge_type>1</edge_type>
				<source_obj>50</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_35">
				<id>52</id>
				<edge_type>1</edge_type>
				<source_obj>7</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_36">
				<id>53</id>
				<edge_type>1</edge_type>
				<source_obj>4</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_37">
				<id>54</id>
				<edge_type>1</edge_type>
				<source_obj>10</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_38">
				<id>55</id>
				<edge_type>1</edge_type>
				<source_obj>3</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_39">
				<id>305</id>
				<edge_type>4</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_40">
				<id>306</id>
				<edge_type>4</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_41">
				<id>307</id>
				<edge_type>4</edge_type>
				<source_obj>17</source_obj>
				<sink_obj>24</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
			<item class_id_reference="20" object_id="_42">
				<id>308</id>
				<edge_type>4</edge_type>
				<source_obj>24</source_obj>
				<sink_obj>27</sink_obj>
				<is_back_edge>0</is_back_edge>
			</item>
		</edges>
	</cdfg>
	<cdfg_regions class_id="21" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="22" tracking_level="1" version="0" object_id="_43">
			<mId>1</mId>
			<mTag>fft_top</mTag>
			<mType>0</mType>
			<sub_regions>
				<count>0</count>
				<item_version>0</item_version>
			</sub_regions>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</basic_blocks>
			<mII>-1</mII>
			<mDepth>-1</mDepth>
			<mMinTripCount>-1</mMinTripCount>
			<mMaxTripCount>-1</mMaxTripCount>
			<mMinLatency>32769</mMinLatency>
			<mMaxLatency>32769</mMaxLatency>
			<mIsDfPipe>1</mIsDfPipe>
			<mDfPipe class_id="23" tracking_level="1" version="0" object_id="_44">
				<port_list class_id="24" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</port_list>
				<process_list class_id="25" tracking_level="0" version="0">
					<count>3</count>
					<item_version>0</item_version>
					<item class_id="26" tracking_level="1" version="0" object_id="_45">
						<type>0</type>
						<name>dummy_proc_fe_1_U0</name>
						<ssdmobj_id>17</ssdmobj_id>
						<pins class_id="27" tracking_level="0" version="0">
							<count>4</count>
							<item_version>0</item_version>
							<item class_id="28" tracking_level="1" version="0" object_id="_46">
								<port class_id="29" tracking_level="1" version="0" object_id="_47">
									<name>direction</name>
									<dir>3</dir>
									<type>0</type>
								</port>
								<inst class_id="30" tracking_level="1" version="0" object_id="_48">
									<type>0</type>
									<name>dummy_proc_fe_1_U0</name>
									<ssdmobj_id>17</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_49">
								<port class_id_reference="29" object_id="_50">
									<name>config_data_V</name>
									<dir>0</dir>
									<type>2</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_51">
								<port class_id_reference="29" object_id="_52">
									<name>in</name>
									<dir>2</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
							<item class_id_reference="28" object_id="_53">
								<port class_id_reference="29" object_id="_54">
									<name>out</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_48"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_55">
						<type>0</type>
						<name>fft_config1_U0</name>
						<ssdmobj_id>24</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_56">
								<port class_id_reference="29" object_id="_57">
									<name>xn</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_58">
									<type>0</type>
									<name>fft_config1_U0</name>
									<ssdmobj_id>24</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_59">
								<port class_id_reference="29" object_id="_60">
									<name>xk</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_58"></inst>
							</item>
							<item class_id_reference="28" object_id="_61">
								<port class_id_reference="29" object_id="_62">
									<name>status_data_V</name>
									<dir>0</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_58"></inst>
							</item>
							<item class_id_reference="28" object_id="_63">
								<port class_id_reference="29" object_id="_64">
									<name>config_ch_data_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_58"></inst>
							</item>
						</pins>
					</item>
					<item class_id_reference="26" object_id="_65">
						<type>0</type>
						<name>dummy_proc_be_1_U0</name>
						<ssdmobj_id>27</ssdmobj_id>
						<pins>
							<count>4</count>
							<item_version>0</item_version>
							<item class_id_reference="28" object_id="_66">
								<port class_id_reference="29" object_id="_67">
									<name>status_in_data_V</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id="_68">
									<type>0</type>
									<name>dummy_proc_be_1_U0</name>
									<ssdmobj_id>27</ssdmobj_id>
								</inst>
							</item>
							<item class_id_reference="28" object_id="_69">
								<port class_id_reference="29" object_id="_70">
									<name>ovflo</name>
									<dir>3</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_68"></inst>
							</item>
							<item class_id_reference="28" object_id="_71">
								<port class_id_reference="29" object_id="_72">
									<name>in</name>
									<dir>0</dir>
									<type>0</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_68"></inst>
							</item>
							<item class_id_reference="28" object_id="_73">
								<port class_id_reference="29" object_id="_74">
									<name>out</name>
									<dir>2</dir>
									<type>1</type>
								</port>
								<inst class_id_reference="30" object_id_reference="_68"></inst>
							</item>
						</pins>
					</item>
				</process_list>
				<channel_list class_id="31" tracking_level="0" version="0">
					<count>4</count>
					<item_version>0</item_version>
					<item class_id="32" tracking_level="1" version="0" object_id="_75">
						<type>1</type>
						<name>fft_config_data_V</name>
						<ssdmobj_id>8</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>16</bitwidth>
						<source class_id_reference="28" object_id="_76">
							<port class_id_reference="29" object_id="_77">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_58"></inst>
						</source>
						<sink class_id_reference="28" object_id="_78">
							<port class_id_reference="29" object_id="_79">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_48"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_80">
						<type>1</type>
						<name>xn_channel</name>
						<ssdmobj_id>13</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16384</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_81">
							<port class_id_reference="29" object_id="_82">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_48"></inst>
						</source>
						<sink class_id_reference="28" object_id="_83">
							<port class_id_reference="29" object_id="_84">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_58"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_85">
						<type>1</type>
						<name>xk_channel</name>
						<ssdmobj_id>10</ssdmobj_id>
						<ctype>0</ctype>
						<depth>16384</depth>
						<bitwidth>32</bitwidth>
						<source class_id_reference="28" object_id="_86">
							<port class_id_reference="29" object_id="_87">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_58"></inst>
						</source>
						<sink class_id_reference="28" object_id="_88">
							<port class_id_reference="29" object_id="_89">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</sink>
					</item>
					<item class_id_reference="32" object_id="_90">
						<type>1</type>
						<name>fft_status_data_V</name>
						<ssdmobj_id>7</ssdmobj_id>
						<ctype>0</ctype>
						<depth>2</depth>
						<bitwidth>8</bitwidth>
						<source class_id_reference="28" object_id="_91">
							<port class_id_reference="29" object_id="_92">
								<name>in</name>
								<dir>3</dir>
								<type>0</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_58"></inst>
						</source>
						<sink class_id_reference="28" object_id="_93">
							<port class_id_reference="29" object_id="_94">
								<name>out</name>
								<dir>3</dir>
								<type>1</type>
							</port>
							<inst class_id_reference="30" object_id_reference="_68"></inst>
						</sink>
					</item>
				</channel_list>
				<net_list class_id="33" tracking_level="0" version="0">
					<count>0</count>
					<item_version>0</item_version>
				</net_list>
			</mDfPipe>
		</item>
	</cdfg_regions>
	<fsm class_id="-1"></fsm>
	<res class_id="-1"></res>
	<node_label_latency class_id="36" tracking_level="0" version="0">
		<count>9</count>
		<item_version>0</item_version>
		<item class_id="37" tracking_level="0" version="0">
			<first>6</first>
			<second class_id="38" tracking_level="0" version="0">
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>7</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>8</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>10</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>13</first>
			<second>
				<first>0</first>
				<second>0</second>
			</second>
		</item>
		<item>
			<first>17</first>
			<second>
				<first>0</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>24</first>
			<second>
				<first>2</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>27</first>
			<second>
				<first>4</first>
				<second>1</second>
			</second>
		</item>
		<item>
			<first>28</first>
			<second>
				<first>5</first>
				<second>0</second>
			</second>
		</item>
	</node_label_latency>
	<bblk_ent_exit class_id="39" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="40" tracking_level="0" version="0">
			<first>29</first>
			<second class_id="41" tracking_level="0" version="0">
				<first>0</first>
				<second>5</second>
			</second>
		</item>
	</bblk_ent_exit>
	<regions class_id="42" tracking_level="0" version="0">
		<count>1</count>
		<item_version>0</item_version>
		<item class_id="43" tracking_level="1" version="0" object_id="_95">
			<region_name>fft_top</region_name>
			<basic_blocks>
				<count>1</count>
				<item_version>0</item_version>
				<item>29</item>
			</basic_blocks>
			<nodes>
				<count>24</count>
				<item_version>0</item_version>
				<item>5</item>
				<item>6</item>
				<item>7</item>
				<item>8</item>
				<item>9</item>
				<item>10</item>
				<item>11</item>
				<item>12</item>
				<item>13</item>
				<item>14</item>
				<item>15</item>
				<item>16</item>
				<item>17</item>
				<item>18</item>
				<item>19</item>
				<item>20</item>
				<item>21</item>
				<item>22</item>
				<item>23</item>
				<item>24</item>
				<item>25</item>
				<item>26</item>
				<item>27</item>
				<item>28</item>
			</nodes>
			<anchor_node>-1</anchor_node>
			<region_type>16</region_type>
			<interval>0</interval>
			<pipe_depth>0</pipe_depth>
		</item>
	</regions>
	<dp_fu_nodes class_id="44" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes>
	<dp_fu_nodes_expression class_id="45" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_expression>
	<dp_fu_nodes_module>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_module>
	<dp_fu_nodes_io>
		<count>0</count>
		<item_version>0</item_version>
	</dp_fu_nodes_io>
	<return_ports>
		<count>0</count>
		<item_version>0</item_version>
	</return_ports>
	<dp_mem_port_nodes class_id="46" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_mem_port_nodes>
	<dp_reg_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_nodes>
	<dp_regname_nodes>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_nodes>
	<dp_reg_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_reg_phi>
	<dp_regname_phi>
		<count>0</count>
		<item_version>0</item_version>
	</dp_regname_phi>
	<dp_port_io_nodes class_id="47" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</dp_port_io_nodes>
	<port2core class_id="48" tracking_level="0" version="0">
		<count>0</count>
		<item_version>0</item_version>
	</port2core>
	<node2core>
		<count>0</count>
		<item_version>0</item_version>
	</node2core>
</syndb>
</boost_serialization>

