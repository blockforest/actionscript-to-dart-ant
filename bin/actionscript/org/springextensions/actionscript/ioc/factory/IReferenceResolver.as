/*
 * Copyright 2007-2011 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.springextensions.actionscript.ioc.factory {

	/**
	 * The interface definting a reference resolver. Reference resolvers are used to find references
	 * to IObjectReference implementations and resolve them.
	 *
	 * <p>
	 * <b>Author:</b> Christophe Herreman<br/>
	 * <b>Version:</b> $Revision: 21 $, $Date: 2008-11-01 22:58:42 +0100 (za, 01 nov 2008) $, $Author: dmurat $<br/>
	 * <b>Since:</b> 0.1
	 * </p>
	 *
	 * @see org.springextensions.actionscript.ioc.factory.IObjectFactory
	 * @see org.springextensions.actionscript.ioc.factory.config.IObjectReference
	 */
	public interface IReferenceResolver {

		/**
		 * Indicates if the given property can be resolved by this reference resolver
		 *
		 * @param property    The property to check
		 *
		 * @return true if this reference resolver can process the given property
		 */
		function canResolve(property:Object):Boolean;

		/**
		 * Resolves all references of IObjectReference contained within the given property.
		 *
		 * @param property    The property to resolve
		 *
		 * @return The property with all references resolved
		 *
		 * @see org.springextensions.actionscript.ioc.factory.config.IObjectReference
		 */
		function resolve(property:Object):Object;
	}
}
